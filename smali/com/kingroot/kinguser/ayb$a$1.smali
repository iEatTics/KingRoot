.class Lcom/kingroot/kinguser/ayb$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ayb$a;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bcD:Lcom/kingroot/kinguser/ayb$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ayb$a;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/kingroot/kinguser/ayb$a$1;->bcD:Lcom/kingroot/kinguser/ayb$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb$a$1;->bcD:Lcom/kingroot/kinguser/ayb$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/ayb$a;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayb;->c(Lcom/kingroot/kinguser/ayb;)V

    .line 115
    return-void
.end method
