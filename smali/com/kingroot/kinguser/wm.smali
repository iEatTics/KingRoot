.class public Lcom/kingroot/kinguser/wm;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/wm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/kingroot/kinguser/wm$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/wm$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/wm;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/kingroot/kinguser/wm$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/wm;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static nu()Lcom/kingroot/kinguser/wm;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/kingroot/kinguser/wm;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/wm;

    return-object v0
.end method
