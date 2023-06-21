.class Lcom/kingroot/kinguser/bci$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bci;->Ug()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bci;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bci;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/kingroot/kinguser/bci$4;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$4;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->a(Lcom/kingroot/kinguser/bci;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bgd;->bt(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    goto :goto_0
.end method
