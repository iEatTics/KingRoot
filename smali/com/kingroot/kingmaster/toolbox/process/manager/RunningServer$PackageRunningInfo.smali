.class public Lcom/kingroot/kingmaster/toolbox/process/manager/RunningServer$PackageRunningInfo;
.super Lcom/kingroot/kingmaster/toolbox/process/manager/PackageInfoBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kingmaster/toolbox/process/manager/RunningServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageRunningInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x43d9d6195fc3627dL


# instance fields
.field protected mCpuTime:J

.field protected mProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mPss:J

.field protected mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mStartTime:J

.field protected mType:I

.field protected mWakeLockCount:J

.field protected mWakeLockTime:J
