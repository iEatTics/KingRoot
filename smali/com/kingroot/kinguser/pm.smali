.class Lcom/kingroot/kinguser/pm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/pj$a;


# instance fields
.field final synthetic yV:Lcom/kingroot/kinguser/pl;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/pl;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/kingroot/kinguser/pm;->yV:Lcom/kingroot/kinguser/pl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 12

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/pm;->yV:Lcom/kingroot/kinguser/pl;

    iget-object v0, v0, Lcom/kingroot/kinguser/pl;->yN:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/kingroot/kinguser/pm;->yV:Lcom/kingroot/kinguser/pl;

    iget v1, v1, Lcom/kingroot/kinguser/pl;->yO:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 140
    iget-object v0, p0, Lcom/kingroot/kinguser/pm;->yV:Lcom/kingroot/kinguser/pl;

    iget-object v0, v0, Lcom/kingroot/kinguser/pl;->yU:Lcom/kingroot/kinguser/pk;

    iget-object v1, p0, Lcom/kingroot/kinguser/pm;->yV:Lcom/kingroot/kinguser/pl;

    iget-object v1, v1, Lcom/kingroot/kinguser/pl;->yu:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/pm;->yV:Lcom/kingroot/kinguser/pl;

    iget-object v2, v2, Lcom/kingroot/kinguser/pl;->yP:Lcom/kingroot/kinguser/ad;

    iget v2, v2, Lcom/kingroot/kinguser/ad;->type:I

    iget-object v3, p0, Lcom/kingroot/kinguser/pm;->yV:Lcom/kingroot/kinguser/pl;

    iget-object v3, v3, Lcom/kingroot/kinguser/pl;->yQ:Lcom/kingroot/kinguser/x;

    iget-object v4, p0, Lcom/kingroot/kinguser/pm;->yV:Lcom/kingroot/kinguser/pl;

    iget-object v4, v4, Lcom/kingroot/kinguser/pl;->yr:Lcom/kingroot/kinguser/u;

    iget-object v5, p0, Lcom/kingroot/kinguser/pm;->yV:Lcom/kingroot/kinguser/pl;

    iget-object v5, v5, Lcom/kingroot/kinguser/pl;->yN:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lcom/kingroot/kinguser/pm;->yV:Lcom/kingroot/kinguser/pl;

    iget-object v6, v6, Lcom/kingroot/kinguser/pl;->yR:Ljava/lang/String;

    iget-object v7, p0, Lcom/kingroot/kinguser/pm;->yV:Lcom/kingroot/kinguser/pl;

    iget-object v7, v7, Lcom/kingroot/kinguser/pl;->yS:Ljava/lang/String;

    iget-object v8, p0, Lcom/kingroot/kinguser/pm;->yV:Lcom/kingroot/kinguser/pl;

    iget-object v8, v8, Lcom/kingroot/kinguser/pl;->yT:Ljava/lang/String;

    iget-object v9, p0, Lcom/kingroot/kinguser/pm;->yV:Lcom/kingroot/kinguser/pl;

    iget-object v9, v9, Lcom/kingroot/kinguser/pl;->yP:Lcom/kingroot/kinguser/ad;

    iget-object v10, p0, Lcom/kingroot/kinguser/pm;->yV:Lcom/kingroot/kinguser/pl;

    iget-object v10, v10, Lcom/kingroot/kinguser/pl;->yv:Lcom/kingroot/kinguser/pv;

    iget-object v11, p0, Lcom/kingroot/kinguser/pm;->yV:Lcom/kingroot/kinguser/pl;

    iget-object v11, v11, Lcom/kingroot/kinguser/pl;->yF:Lcom/kingroot/kinguser/cbe;

    invoke-static/range {v0 .. v11}, Lcom/kingroot/kinguser/pk;->a(Lcom/kingroot/kinguser/pk;Landroid/content/Context;ILcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    .line 142
    :cond_0
    return-void
.end method
