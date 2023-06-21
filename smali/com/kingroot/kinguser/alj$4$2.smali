.class Lcom/kingroot/kinguser/alj$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alj$4;->eE(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axk:Lcom/kingroot/kinguser/alj$4;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj$4;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$4$2;->axk:Lcom/kingroot/kinguser/alj$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$4$2;->axk:Lcom/kingroot/kinguser/alj$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/alj$4;->axj:Lcom/kingroot/common/uilib/ShapedImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/ShapedImageView;->setImageResource(I)V

    .line 477
    return-void
.end method
