.class Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/hl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

.field private aqc:Lcom/kingroot/kinguser/bed;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)V
    .locals 5

    .prologue
    .line 582
    iput-object p1, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$2;-><init>(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;->aqc:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;->aqc:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/hk;)V
    .locals 6

    .prologue
    .line 588
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1;

    invoke-direct {v5, p0, p1}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1;-><init>(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;Lcom/kingroot/kinguser/hk;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 618
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/hk;)V
    .locals 0

    .prologue
    .line 623
    return-void
.end method
