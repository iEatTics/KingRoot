.class Lcom/kingroot/kinguser/pp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic yY:Lcom/kingroot/kinguser/po;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/po;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/kingroot/kinguser/pp;->yY:Lcom/kingroot/kinguser/po;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/pp;->yY:Lcom/kingroot/kinguser/po;

    iget-object v0, v0, Lcom/kingroot/kinguser/po;->yX:Lcom/kingroot/kinguser/pn;

    iget-object v0, v0, Lcom/kingroot/kinguser/pn;->yU:Lcom/kingroot/kinguser/pk;

    iget-object v1, p0, Lcom/kingroot/kinguser/pp;->yY:Lcom/kingroot/kinguser/po;

    iget-object v1, v1, Lcom/kingroot/kinguser/po;->yX:Lcom/kingroot/kinguser/pn;

    iget-object v1, v1, Lcom/kingroot/kinguser/pn;->yu:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/pp;->yY:Lcom/kingroot/kinguser/po;

    iget-object v2, v2, Lcom/kingroot/kinguser/po;->yX:Lcom/kingroot/kinguser/pn;

    iget-object v2, v2, Lcom/kingroot/kinguser/pn;->yr:Lcom/kingroot/kinguser/u;

    iget v2, v2, Lcom/kingroot/kinguser/u;->conchSeqno:I

    add-int/lit8 v2, v2, 0x78

    iget-object v3, p0, Lcom/kingroot/kinguser/pp;->yY:Lcom/kingroot/kinguser/po;

    iget-object v3, v3, Lcom/kingroot/kinguser/po;->yX:Lcom/kingroot/kinguser/pn;

    iget-object v3, v3, Lcom/kingroot/kinguser/pn;->yQ:Lcom/kingroot/kinguser/x;

    iget-object v4, p0, Lcom/kingroot/kinguser/pp;->yY:Lcom/kingroot/kinguser/po;

    iget-object v4, v4, Lcom/kingroot/kinguser/po;->yX:Lcom/kingroot/kinguser/pn;

    iget-object v4, v4, Lcom/kingroot/kinguser/pn;->yr:Lcom/kingroot/kinguser/u;

    iget-object v5, p0, Lcom/kingroot/kinguser/pp;->yY:Lcom/kingroot/kinguser/po;

    iget-object v5, v5, Lcom/kingroot/kinguser/po;->yX:Lcom/kingroot/kinguser/pn;

    iget-object v5, v5, Lcom/kingroot/kinguser/pn;->yR:Ljava/lang/String;

    iget-object v6, p0, Lcom/kingroot/kinguser/pp;->yY:Lcom/kingroot/kinguser/po;

    iget-object v6, v6, Lcom/kingroot/kinguser/po;->yX:Lcom/kingroot/kinguser/pn;

    iget-object v6, v6, Lcom/kingroot/kinguser/pn;->yN:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v7, p0, Lcom/kingroot/kinguser/pp;->yY:Lcom/kingroot/kinguser/po;

    iget-object v7, v7, Lcom/kingroot/kinguser/po;->yX:Lcom/kingroot/kinguser/pn;

    iget-object v7, v7, Lcom/kingroot/kinguser/pn;->yP:Lcom/kingroot/kinguser/ad;

    iget-object v8, p0, Lcom/kingroot/kinguser/pp;->yY:Lcom/kingroot/kinguser/po;

    iget-object v8, v8, Lcom/kingroot/kinguser/po;->yX:Lcom/kingroot/kinguser/pn;

    iget-object v8, v8, Lcom/kingroot/kinguser/pn;->yv:Lcom/kingroot/kinguser/pv;

    iget-object v9, p0, Lcom/kingroot/kinguser/pp;->yY:Lcom/kingroot/kinguser/po;

    iget-object v9, v9, Lcom/kingroot/kinguser/po;->yX:Lcom/kingroot/kinguser/pn;

    iget-object v9, v9, Lcom/kingroot/kinguser/pn;->yF:Lcom/kingroot/kinguser/cbe;

    invoke-static/range {v0 .. v9}, Lcom/kingroot/kinguser/pk;->a(Lcom/kingroot/kinguser/pk;Landroid/content/Context;ILcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    .line 173
    return-void
.end method
