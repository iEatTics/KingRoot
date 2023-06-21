.class final Lcom/kingroot/kinguser/awf$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awf;->a(Lcom/kingroot/kinguser/dt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aUP:Lcom/kingroot/kinguser/ds;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ds;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/kingroot/kinguser/awf$1;->aUP:Lcom/kingroot/kinguser/ds;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 48
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/awf$1;->aUP:Lcom/kingroot/kinguser/ds;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aju;->a(Landroid/content/Context;Lcom/kingroot/kinguser/ds;)I

    .line 50
    return-void
.end method
