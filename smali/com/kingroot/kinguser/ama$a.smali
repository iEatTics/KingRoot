.class public Lcom/kingroot/kinguser/ama$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/amw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ama$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final azy:Lcom/kingroot/kinguser/alz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/alz",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/kingroot/kinguser/ama$a$2;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ama$a$2;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ama$a;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/kingroot/kinguser/ama$a$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ama$a$1;-><init>(Lcom/kingroot/kinguser/ama$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ama$a;->azy:Lcom/kingroot/kinguser/alz;

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/ama$a;->azy:Lcom/kingroot/kinguser/alz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/alz;->a(Lcom/kingroot/kinguser/alz$a;)V

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ama$1;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/kingroot/kinguser/ama$a;-><init>()V

    return-void
.end method

.method public static HX()Lcom/kingroot/kinguser/ama$a;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/kingroot/kinguser/ama$a;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ama$a;

    return-object v0
.end method

.method private HY()V
    .locals 4

    .prologue
    .line 111
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->R(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->Bo()J

    move-result-wide v0

    .line 118
    const-wide/32 v2, 0x1b77400

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/akl;->au(J)V

    .line 125
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3;-><init>(Lcom/kingroot/kinguser/ama$a;)V

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/ams;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult;)V

    goto :goto_0
.end method

.method private HZ()V
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4;-><init>(Lcom/kingroot/kinguser/ama$a;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;)V

    .line 277
    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/ama$a;)Lcom/kingroot/kinguser/alz;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/ama$a;->azy:Lcom/kingroot/kinguser/alz;

    return-object v0
.end method


# virtual methods
.method public rW()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/kingroot/kinguser/ama$a;->HZ()V

    .line 105
    invoke-direct {p0}, Lcom/kingroot/kinguser/ama$a;->HY()V

    .line 106
    return-void
.end method
