.class public Lcom/kingroot/kinguser/zv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/zv$a;
    }
.end annotation


# instance fields
.field private WW:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/kingroot/kinguser/zv;->WW:J

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/zv$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kingroot/kinguser/zv;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/zv;J)J
    .locals 1

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/kingroot/kinguser/zv;->WW:J

    return-wide p1
.end method


# virtual methods
.method public pG()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/kingroot/kinguser/zv;->WW:J

    return-wide v0
.end method
