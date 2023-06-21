.class Lcom/kingroot/kinguser/bin$a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bin$a$1;->b(ZLcom/kingroot/kinguser/wd$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btO:Lcom/kingroot/kinguser/bin$a$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bin$a$1;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/kingroot/kinguser/bin$a$1$1;->btO:Lcom/kingroot/kinguser/bin$a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a$1$1;->btO:Lcom/kingroot/kinguser/bin$a$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/bin$a$1;->btN:Lcom/kingroot/kinguser/bin$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->b(Lcom/kingroot/kinguser/bin;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a$1$1;->btO:Lcom/kingroot/kinguser/bin$a$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/bin$a$1;->btN:Lcom/kingroot/kinguser/bin$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->b(Lcom/kingroot/kinguser/bin;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 564
    :cond_0
    return-void
.end method
