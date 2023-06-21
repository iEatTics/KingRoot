.class public Lcom/kingroot/kinguser/afj;
.super Lcom/kingroot/kinguser/th;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/afj$a;
    }
.end annotation


# static fields
.field private static final ahJ:Lcom/kingroot/kinguser/afj$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/kingroot/kinguser/afj$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/afj$a;-><init>(Lcom/kingroot/kinguser/afj$1;)V

    sput-object v0, Lcom/kingroot/kinguser/afj;->ahJ:Lcom/kingroot/kinguser/afj$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kingroot/kinguser/th;-><init>()V

    return-void
.end method

.method static synthetic vj()Lcom/kingroot/kinguser/afj$a;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/kingroot/kinguser/afj;->ahJ:Lcom/kingroot/kinguser/afj$a;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 34
    if-nez p2, :cond_0

    .line 70
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/afj$1;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/kinguser/afj$1;-><init>(Lcom/kingroot/kinguser/afj;Landroid/content/Intent;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
