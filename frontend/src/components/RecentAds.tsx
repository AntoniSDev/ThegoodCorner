import { useState } from "react";
import AdCard, { AdCardProps } from "./AdCard";
import { useRouter } from "next/router";
import { useQuery, gql } from "@apollo/client";

const GET_ALL_ADS = gql`
  query GetAllAds {
    getAllAds {
      id
      title
      description
      owner
      ville
      imgUrl
    }
  }
`;

const RecentAds = () => {
  const router = useRouter();

  const { loading, error, data } = useQuery(GET_ALL_ADS);

  if (loading) return <p>Loading...</p>;
  if (error) return <p>Error : {error.message}</p>;
  return (
    <>
      <h2>Annonces récentes</h2>

      <section className="recent-ads">
        {data.getAllAds.map((ad: any) => (
          <div key={ad.id}>
            <AdCard
              imgUrl={ad.imgUrl}
              link={`/ad/${ad.id}`}
              price={ad.price}
              title={ad.title}
            />

            <button className="button">Delete</button>
          </div>
        ))}
      </section>
    </>
  );
};

export default RecentAds;
