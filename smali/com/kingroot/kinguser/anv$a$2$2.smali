.class Lcom/kingroot/kinguser/anv$a$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anv$a$2;->eE(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEw:Lcom/kingroot/kinguser/anv$a$2;

.field final synthetic yz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anv$a$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/kingroot/kinguser/anv$a$2$2;->aEw:Lcom/kingroot/kinguser/anv$a$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/anv$a$2$2;->yz:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/kingroot/kinguser/anv$a$2$2;->aEw:Lcom/kingroot/kinguser/anv$a$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/anv$a$2;->aEv:Lcom/kingroot/kinguser/anv$a$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/anv$a$a;->iconUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/anv$a$2$2;->yz:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/kingroot/kinguser/anv$a$2$2;->aEw:Lcom/kingroot/kinguser/anv$a$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/anv$a$2;->aEv:Lcom/kingroot/kinguser/anv$a$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/anv$a$a;->aEy:Lcom/kingroot/common/uilib/ShapedImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/ShapedImageView;->setImageResource(I)V

    .line 241
    :cond_0
    return-void
.end method
