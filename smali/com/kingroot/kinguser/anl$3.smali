.class Lcom/kingroot/kinguser/anl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anl;->a(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anl;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anl;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/kingroot/kinguser/anl$3;->this$0:Lcom/kingroot/kinguser/anl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/kingroot/kinguser/anl$3;->this$0:Lcom/kingroot/kinguser/anl;

    iget-object v0, v0, Lcom/kingroot/kinguser/anl;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->Jq()V

    .line 259
    return-void
.end method
