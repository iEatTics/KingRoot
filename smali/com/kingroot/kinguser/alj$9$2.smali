.class Lcom/kingroot/kinguser/alj$9$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alj$9;->eE(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axm:Lcom/kingroot/kinguser/alj$9;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj$9;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$9$2;->axm:Lcom/kingroot/kinguser/alj$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$9$2;->axm:Lcom/kingroot/kinguser/alj$9;

    iget-object v0, v0, Lcom/kingroot/kinguser/alj$9;->axl:Lcom/kingroot/kinguser/alj$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/alj$a;->awb:Landroid/widget/ImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    return-void
.end method
