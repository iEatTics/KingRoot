.class public Lcom/kingroot/kinguser/cfh$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public bVi:J

.field public ccg:Z


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0

    .prologue
    .line 1576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1577
    iput-boolean p1, p0, Lcom/kingroot/kinguser/cfh$b;->ccg:Z

    .line 1578
    iput-wide p2, p0, Lcom/kingroot/kinguser/cfh$b;->bVi:J

    .line 1579
    return-void
.end method
