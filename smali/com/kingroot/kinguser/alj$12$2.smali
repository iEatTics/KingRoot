.class Lcom/kingroot/kinguser/alj$12$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alj$12;->eE(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axq:Lcom/kingroot/kinguser/alj$12;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj$12;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$12$2;->axq:Lcom/kingroot/kinguser/alj$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$12$2;->axq:Lcom/kingroot/kinguser/alj$12;

    iget-object v0, v0, Lcom/kingroot/kinguser/alj$12;->axj:Lcom/kingroot/common/uilib/ShapedImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/ShapedImageView;->setImageResource(I)V

    .line 361
    return-void
.end method
