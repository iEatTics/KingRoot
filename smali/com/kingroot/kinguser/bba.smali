.class public Lcom/kingroot/kinguser/bba;
.super Lcom/kingroot/kinguser/th;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bba$a;
    }
.end annotation


# static fields
.field private static final bex:Lcom/kingroot/kinguser/bba$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/kingroot/kinguser/bba$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bba$a;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bba;->bex:Lcom/kingroot/kinguser/bba$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/kingroot/kinguser/th;-><init>()V

    return-void
.end method

.method static synthetic Wc()Lcom/kingroot/kinguser/bba$a;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/kingroot/kinguser/bba;->bex:Lcom/kingroot/kinguser/bba$a;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 142
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/bba$1;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/kinguser/bba$1;-><init>(Lcom/kingroot/kinguser/bba;Landroid/content/Intent;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
