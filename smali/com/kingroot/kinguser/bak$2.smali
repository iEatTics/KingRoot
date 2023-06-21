.class Lcom/kingroot/kinguser/bak$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bee:Lcom/kingroot/kinguser/bak;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bak;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/kingroot/kinguser/bak$2;->bee:Lcom/kingroot/kinguser/bak;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 2
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 110
    new-instance v0, Lcom/kingroot/kinguser/bak$2$1;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/bak$2$1;-><init>(Lcom/kingroot/kinguser/bak$2;Lcom/kingroot/kinguser/bed$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method
