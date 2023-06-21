.class public Lcom/kingroot/loader/p;
.super Lcom/kingroot/kinguser/tp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/loader/p$a;
    }
.end annotation


# static fields
.field private static bzi:Lcom/kingroot/loader/p$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/kingroot/loader/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/loader/p$a;-><init>(Lcom/kingroot/loader/p$1;)V

    sput-object v0, Lcom/kingroot/loader/p;->bzi:Lcom/kingroot/loader/p$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/kingroot/kinguser/tp;-><init>()V

    return-void
.end method

.method public static aeN()Lcom/kingroot/loader/multi/IKlConnectionManagerBridge;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/kingroot/loader/p;->bzi:Lcom/kingroot/loader/p$a;

    return-object v0
.end method


# virtual methods
.method protected onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/kingroot/loader/p;->bzi:Lcom/kingroot/loader/p$a;

    return-object v0
.end method
