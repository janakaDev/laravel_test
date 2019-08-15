import { Component, OnInit } from '@angular/core';
import {DatePipe} from '@angular/common';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent implements OnInit {

  myDate: Date = new Date();
  date: any;
  constructor(private datePipe: DatePipe) { }


  ngOnInit() {
    this.date = this.datePipe.transform(this.myDate, 'long');
  }

}
