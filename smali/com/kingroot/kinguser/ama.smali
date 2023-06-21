.class public Lcom/kingroot/kinguser/ama;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/amw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ama$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ama;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private azx:Lcom/kingroot/kinguser/amw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_MarketGameReservationHelper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ama;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/kingroot/kinguser/ama$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ama$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ama;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/uv;->kM()Lcom/kingroot/kinguser/uv;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/ama$a;->HX()Lcom/kingroot/kinguser/ama$a;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/amw;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/uv;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amw;

    iput-object v0, p0, Lcom/kingroot/kinguser/ama;->azx:Lcom/kingroot/kinguser/amw;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ama$1;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/kingroot/kinguser/ama;-><init>()V

    return-void
.end method

.method public static HV()Lcom/kingroot/kinguser/ama;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/kingroot/kinguser/ama;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ama;

    return-object v0
.end method


# virtual methods
.method public rW()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/ama;->azx:Lcom/kingroot/kinguser/amw;

    invoke-interface {v0}, Lcom/kingroot/kinguser/amw;->rW()V

    .line 70
    return-void
.end method
