.class Lcom/kingroot/kinguser/bnp$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bnp$a;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bEL:Lcom/kingroot/kinguser/bnp$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bnp$a;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/kingroot/kinguser/bnp$a$1;->bEL:Lcom/kingroot/kinguser/bnp$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a$1;->bEL:Lcom/kingroot/kinguser/bnp$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->e(Lcom/kingroot/kinguser/bnp;)Lcom/kingroot/kinguser/bql;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bnp$a$1;->bEL:Lcom/kingroot/kinguser/bnp$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v1}, Lcom/kingroot/kinguser/bnp;->i(Lcom/kingroot/kinguser/bnp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bql;->loadUrl(Ljava/lang/String;)V

    .line 384
    return-void
.end method
