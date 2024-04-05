import { Container } from "../components/Container";

import React from "react";
import Link from "next/link";

export function Hero() {
  return (
    <Container className="pt-20 pb-16 text-center lg:pt-32 -mt-16">
      <h1 className="mx-auto max-w-4xl font-display text-3xl font-medium tracking-tight text-slate-900 sm:text-7xl">
        Flexible{" "}
        <span className="relative whitespace-nowrap text-[#a02279]">
          <span className="relative">Vesting</span>
        </span>{" "}
         for your Company at Ease
      </h1>

      <div className="mt-20 w-full flex justify-center space-x-6 ">
        <Link
          href="/create"
          className="bg-[#a02279] text-xl text-white px-4 py-2 rounded-lg w-1/2"
        >
          Create Company
        </Link>
      </div>
    </Container>
  );
}
