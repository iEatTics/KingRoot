.class public Lcom/kingroot/kinguser/tg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Hf:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/kingroot/common/framework/broadcast/KBroadCastProxy$1;

    invoke-direct {v0}, Lcom/kingroot/common/framework/broadcast/KBroadCastProxy$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/tg;->Hf:Landroid/os/IBinder;

    return-void
.end method

.method public static jC()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/ti;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    new-instance v1, Lcom/kingroot/kinguser/tg$1;

    invoke-direct {v1}, Lcom/kingroot/kinguser/tg$1;-><init>()V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/tj;->a(Landroid/content/Intent;Landroid/content/ServiceConnection;)V

    .line 49
    return-void
.end method

.method static synthetic jD()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/kingroot/kinguser/tg;->Hf:Landroid/os/IBinder;

    return-object v0
.end method
