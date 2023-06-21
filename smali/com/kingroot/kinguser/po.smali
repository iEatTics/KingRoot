.class Lcom/kingroot/kinguser/po;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/pj$a;


# instance fields
.field final synthetic yX:Lcom/kingroot/kinguser/pn;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/pn;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/kingroot/kinguser/po;->yX:Lcom/kingroot/kinguser/pn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/po;->yX:Lcom/kingroot/kinguser/pn;

    iget-object v0, v0, Lcom/kingroot/kinguser/pn;->yN:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/kingroot/kinguser/po;->yX:Lcom/kingroot/kinguser/pn;

    iget-object v1, v1, Lcom/kingroot/kinguser/pn;->yR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/po;->yX:Lcom/kingroot/kinguser/pn;

    iget-object v1, v1, Lcom/kingroot/kinguser/pn;->yR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/po;->yX:Lcom/kingroot/kinguser/pn;

    iget-object v1, v1, Lcom/kingroot/kinguser/pn;->yS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/po;->yX:Lcom/kingroot/kinguser/pn;

    iget-object v1, v1, Lcom/kingroot/kinguser/pn;->yW:Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 169
    new-instance v0, Lcom/kingroot/kinguser/pp;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/pp;-><init>(Lcom/kingroot/kinguser/po;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/gr;->a(Ljava/lang/Runnable;)V

    .line 177
    :cond_0
    return-void
.end method
