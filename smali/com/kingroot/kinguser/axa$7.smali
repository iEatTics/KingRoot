.class Lcom/kingroot/kinguser/axa$7;
.super Lcom/kingroot/kinguser/ber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axa;->oO()Lcom/kingroot/kinguser/yp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXc:Lcom/kingroot/kinguser/axa;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axa;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/kingroot/kinguser/axa$7;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-direct {p0, p2, p3}, Lcom/kingroot/kinguser/ber;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected oI()V
    .locals 2

    .prologue
    .line 248
    invoke-super {p0}, Lcom/kingroot/kinguser/ber;->oI()V

    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$7;->aXc:Lcom/kingroot/kinguser/axa;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa$7;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axa;->a(Lcom/kingroot/kinguser/axa;Lcom/kingroot/common/utils/ui/ImageViewDot;)Lcom/kingroot/common/utils/ui/ImageViewDot;

    .line 250
    return-void
.end method
