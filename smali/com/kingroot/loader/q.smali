.class public Lcom/kingroot/loader/q;
.super Lcom/kingroot/kinguser/tp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/loader/q$a;
    }
.end annotation


# static fields
.field private static bzj:Lcom/kingroot/loader/q$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/kingroot/loader/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/loader/q$a;-><init>(Lcom/kingroot/loader/q$1;)V

    sput-object v0, Lcom/kingroot/loader/q;->bzj:Lcom/kingroot/loader/q$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kingroot/kinguser/tp;-><init>()V

    return-void
.end method

.method public static aeO()Lcom/kingroot/loader/multi/IKlPackageManagerBridge;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/kingroot/loader/q;->bzj:Lcom/kingroot/loader/q$a;

    return-object v0
.end method


# virtual methods
.method protected onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/kingroot/loader/q;->bzj:Lcom/kingroot/loader/q$a;

    return-object v0
.end method
