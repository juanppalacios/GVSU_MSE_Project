#import "template.typ": *

#show: ieee.with(
  title: "Working Title - Hardware Acceleration: Inferring an Emergency Vehicle Classifier",
  abstract: [
    Hardware accelerators offer a unique solution to the problem of object detection in computer vision applications.
    This research focuses on a machine learning application to recognize emergency vehicles on the road.
    As the number of distracted-related deaths continue to rise, driver safety features are of interest for automotive product companies.

    // context
    // central questions
    // what's already known
    // motivation
    // methods
    // results
    // significance
  ],
  authors: (
    (
      name: "Juan Palacios",
      department: [Electrical and Computer Engineering],
      organization: [Grand Valley State University],
      location: [Grand Rapids, Michigan],
      email: "palacioj@mail.gvsu.edu"
    ),
  ),
  index-terms: ("hardware acceleration", "computer vision", "machine learning", "neural network"),
  bibliography-file: "references.bib",
)

= Introduction

The purpose of this project is to explore the field of computer vision to implement object tracking on a Gentex Full Display Mirror® (FDM®). This product offers an unubstructed rearward view of the road. At a high-level, a camera feeds video onto the rearview mirror device. The goal of this project is to implement a neural network capable of detecting object movement across a screen over time. This novel feature has the potential of alerting drivers to moving objects while reserving their vehicle or identifying emergency vehicles in the rearview mirror. This project has three objectives:
+ Develop and train a machine learning model to track objects over time (Python development)
+ Deploy the model onto hardware using a combination of microcontroller and FPGA (HLS/HDL development)
+ Assess the performance on a Gentex FDM® for viability
Computer vision is a powerful tool enabling a computer to mimic the way humans see.
the modern implementation of computer vision relies on machine learning.
An sensor device captures an image and processing is done on an interpreting device.
A neural network algorithm performs the processing, providing useful information about the image @Microsoft-Computer-Vision-2023.
There are four main categoreis of computer vision applications: image classification, object detection, object tracking, and optical character recognition @Microsoft-Computer-Vision-2023.
For our purposes, we are focused on object tracking.
First, an object must be detected in a single image.
Next, our object must be followed throughout subsequent images.
Finally, our device provides useful information in order to perform specific tasks based on our object tracking data @IBM-Computer-Vision-2023.
There are several ways of implementing a model onto an FPGA: using kernel managed by a CPU (HLS), or writing a model in VHDL (HDL).
FPGA kernels are not just instructions, but digital circuits (hence why we have pragmas, subset of C/C++).

// == Paper overview
// = Methodology
// = Discussion
// = Conclusion