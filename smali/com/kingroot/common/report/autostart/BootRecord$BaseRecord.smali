.class public abstract Lcom/kingroot/common/report/autostart/BootRecord$BaseRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/report/autostart/BootRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseRecord"
.end annotation


# instance fields
.field public mID:J

.field public mPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/common/report/autostart/BootRecord$BaseRecord;->mID:J

    return-void
.end method
