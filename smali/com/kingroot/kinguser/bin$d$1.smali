.class Lcom/kingroot/kinguser/bin$d$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bin$d;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic buc:Lcom/kingroot/kinguser/bin$d;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bin$d;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/kingroot/kinguser/bin$d$1;->buc:Lcom/kingroot/kinguser/bin$d;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$d$1;->buc:Lcom/kingroot/kinguser/bin$d;

    iget-object v0, v0, Lcom/kingroot/kinguser/bin$d;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->a(Lcom/kingroot/kinguser/bin;)V

    .line 334
    return-void
.end method
