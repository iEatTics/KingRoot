.class final Lcom/kingroot/kinguser/bbe$7;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 568
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 569
    new-instance v0, Lcom/kingroot/kinguser/bbe$7$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bbe$7$1;-><init>(Lcom/kingroot/kinguser/bbe$7;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    return-void
.end method
