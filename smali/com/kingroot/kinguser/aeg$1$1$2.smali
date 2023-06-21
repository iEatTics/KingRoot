.class Lcom/kingroot/kinguser/aeg$1$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aeg$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aeS:Lcom/kingroot/kinguser/aeg$1$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aeg$1$1;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/kingroot/kinguser/aeg$1$1$2;->aeS:Lcom/kingroot/kinguser/aeg$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/kingroot/kinguser/aeg$1$1$2;->aeS:Lcom/kingroot/kinguser/aeg$1$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/aeg$1$1;->aeQ:Lcom/kingroot/common/network/download/UpdateInfo;

    const/4 v1, 0x5

    iput v1, v0, Lcom/kingroot/common/network/download/UpdateInfo;->type:I

    .line 224
    return-void
.end method
