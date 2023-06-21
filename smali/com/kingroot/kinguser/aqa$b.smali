.class Lcom/kingroot/kinguser/aqa$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aqa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public aKS:Lcom/kingroot/kinguser/aqc;

.field public aKT:J

.field public aKU:I

.field private gw:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/aqa$b;->aKT:J

    .line 513
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/aqa$b;->aKU:I

    .line 517
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aqa$b;)I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/kingroot/kinguser/aqa$b;->gw:I

    return v0
.end method

.method public static b(ILcom/kingroot/kinguser/aqc;JI)Lcom/kingroot/kinguser/aqa$b;
    .locals 2

    .prologue
    .line 520
    new-instance v0, Lcom/kingroot/kinguser/aqa$b;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aqa$b;-><init>()V

    .line 521
    iput p0, v0, Lcom/kingroot/kinguser/aqa$b;->gw:I

    .line 522
    iput-object p1, v0, Lcom/kingroot/kinguser/aqa$b;->aKS:Lcom/kingroot/kinguser/aqc;

    .line 523
    iput-wide p2, v0, Lcom/kingroot/kinguser/aqa$b;->aKT:J

    .line 524
    iput p4, v0, Lcom/kingroot/kinguser/aqa$b;->aKU:I

    .line 525
    return-object v0
.end method
