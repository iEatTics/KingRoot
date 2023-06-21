.class Lcom/kingroot/kinguser/anb$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bug;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anb$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aAg:Lcom/kingroot/kinguser/anb$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anb$3;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/kingroot/kinguser/anb$3$1;->aAg:Lcom/kingroot/kinguser/anb$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fD(I)V
    .locals 3

    .prologue
    .line 272
    if-nez p1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$3$1;->aAg:Lcom/kingroot/kinguser/anb$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/anb$3;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v0}, Lcom/kingroot/kinguser/anb;->a(Lcom/kingroot/kinguser/anb;)V

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$3$1;->aAg:Lcom/kingroot/kinguser/anb$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/anb$3;->aAd:Lcom/kingroot/kinguser/anb;

    iget-object v1, p0, Lcom/kingroot/kinguser/anb$3$1;->aAg:Lcom/kingroot/kinguser/anb$3;

    iget-object v1, v1, Lcom/kingroot/kinguser/anb$3;->aAe:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    iget-object v2, p0, Lcom/kingroot/kinguser/anb$3$1;->aAg:Lcom/kingroot/kinguser/anb$3;

    iget v2, v2, Lcom/kingroot/kinguser/anb$3;->aAf:I

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/anb;->a(Lcom/kingroot/kinguser/anb;Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    goto :goto_0
.end method
