.class public Lcom/kingroot/kinguser/amb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/amx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/amb$a;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/amb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private azA:Lcom/kingroot/kinguser/amx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/kingroot/kinguser/amb$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/amb$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/amb;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/kingroot/kinguser/uv;->kM()Lcom/kingroot/kinguser/uv;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/amb$a;->Id()Lcom/kingroot/kinguser/amb$a;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/amx;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/uv;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amx;

    iput-object v0, p0, Lcom/kingroot/kinguser/amb;->azA:Lcom/kingroot/kinguser/amx;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/amb$1;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kingroot/kinguser/amb;-><init>()V

    return-void
.end method

.method public static Ib()Lcom/kingroot/kinguser/amb;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/kingroot/kinguser/amb;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amb;

    return-object v0
.end method


# virtual methods
.method public a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult;)V
    .locals 1
    .param p2    # Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/amb;->azA:Lcom/kingroot/kinguser/amx;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/amx;->a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult;)V

    .line 71
    return-void
.end method
