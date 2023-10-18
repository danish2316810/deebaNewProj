namespace app.danish;

using { app.danish.CDSViews } from '../db/cdsView';

service CDSService  @(path:'/cdsService') {
  entity dancdsview as projection on CDSViews.dancdsview;
}
