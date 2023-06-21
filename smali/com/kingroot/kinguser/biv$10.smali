.class Lcom/kingroot/kinguser/biv$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bit$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/biv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic buY:Lcom/kingroot/kinguser/biv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/biv;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/kingroot/kinguser/biv$10;->buY:Lcom/kingroot/kinguser/biv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/kingroot/kinguser/biv$10;->buY:Lcom/kingroot/kinguser/biv;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/biv;->a(Lcom/kingroot/kinguser/biv;Z)V

    .line 280
    iget-object v0, p0, Lcom/kingroot/kinguser/biv$10;->buY:Lcom/kingroot/kinguser/biv;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/biv;->Qs()V

    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/biv$10;->buY:Lcom/kingroot/kinguser/biv;

    invoke-static {v0}, Lcom/kingroot/kinguser/biv;->a(Lcom/kingroot/kinguser/biv;)Lcom/kingroot/kinguser/bit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bit;->adk()V

    .line 282
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070217

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 283
    return-void
.end method
