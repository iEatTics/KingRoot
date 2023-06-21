.class public abstract Lcom/kingroot/kinguser/kc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/kc$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private tE:Ljava/lang/String;

.field private tF:Lcom/kingroot/kinguser/kg;

.field private tG:Lcom/kingroot/kinguser/mg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/kingroot/kinguser/kd;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/kd;-><init>(Lcom/kingroot/kinguser/kc;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/kc;->tG:Lcom/kingroot/kinguser/mg;

    .line 19
    iput-object p1, p0, Lcom/kingroot/kinguser/kc;->mContext:Landroid/content/Context;

    .line 20
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/kc;->tE:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/kc;)Lcom/kingroot/kinguser/kg;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/kingroot/kinguser/kc;->tF:Lcom/kingroot/kinguser/kg;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/kc;Lcom/kingroot/kinguser/kg;)Lcom/kingroot/kinguser/kg;
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/kingroot/kinguser/kc;->tF:Lcom/kingroot/kinguser/kg;

    return-object p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/kc;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/kingroot/kinguser/kc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/kc;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/kingroot/kinguser/kc;->tE:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Lcom/kingroot/kinguser/kf;)V
.end method

.method protected abstract b(Lcom/kingroot/kinguser/kf;)V
.end method

.method public cC()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/kc;->tG:Lcom/kingroot/kinguser/mg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/mg;->n(Z)Z

    .line 33
    return-void
.end method

.method protected abstract cE()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/ac;",
            ">;"
        }
    .end annotation
.end method

.method protected cT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/kc;->tE:Ljava/lang/String;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/kc;->mContext:Landroid/content/Context;

    return-object v0
.end method
