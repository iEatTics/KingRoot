.class Lcom/kingroot/kinguser/aes$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aes;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic afs:Lcom/kingroot/kinguser/aes;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aes;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/kingroot/kinguser/aes$1;->afs:Lcom/kingroot/kinguser/aes;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 112
    invoke-static {}, Lcom/kingroot/kinguser/bja;->adw()Z

    .line 113
    return-void
.end method
