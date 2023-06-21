.class public Lcom/kingroot/kinguser/aph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/api;


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/aph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/kingroot/kinguser/aph$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aph$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aph;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/aph$1;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kingroot/kinguser/aph;-><init>()V

    return-void
.end method

.method public static Lm()Lcom/kingroot/kinguser/aph;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/kingroot/kinguser/aph;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aph;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/kingroot/kinguser/api$a;)V
    .locals 2

    .prologue
    .line 37
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/aph$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/kingroot/kinguser/aph$2;-><init>(Lcom/kingroot/kinguser/aph;Ljava/lang/String;Landroid/widget/ImageView;Lcom/kingroot/kinguser/api$a;)V

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
