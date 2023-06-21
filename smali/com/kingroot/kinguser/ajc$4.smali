.class Lcom/kingroot/kinguser/ajc$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ajc;->yY()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic atb:Lcom/kingroot/kinguser/ajc;

.field final synthetic atc:Ljava/util/ArrayList;

.field final synthetic atd:Lcom/kingroot/kinguser/aks;

.field final synthetic ate:Lcom/kingroot/kinguser/cd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ajc;Ljava/util/ArrayList;Lcom/kingroot/kinguser/aks;Lcom/kingroot/kinguser/cd;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/kingroot/kinguser/ajc$4;->atb:Lcom/kingroot/kinguser/ajc;

    iput-object p2, p0, Lcom/kingroot/kinguser/ajc$4;->atc:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/kingroot/kinguser/ajc$4;->atd:Lcom/kingroot/kinguser/aks;

    iput-object p4, p0, Lcom/kingroot/kinguser/ajc$4;->ate:Lcom/kingroot/kinguser/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 355
    iget-object v0, p0, Lcom/kingroot/kinguser/ajc$4;->atc:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/aif;->m(Ljava/util/ArrayList;)V

    .line 356
    iget-object v0, p0, Lcom/kingroot/kinguser/ajc$4;->atd:Lcom/kingroot/kinguser/aks;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->aO(J)V

    .line 357
    iget-object v0, p0, Lcom/kingroot/kinguser/ajc$4;->atd:Lcom/kingroot/kinguser/aks;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->ej(I)V

    .line 358
    iget-object v0, p0, Lcom/kingroot/kinguser/ajc$4;->ate:Lcom/kingroot/kinguser/cd;

    invoke-static {v0}, Lcom/kingroot/kinguser/ajc;->a(Lcom/kingroot/kinguser/cd;)V

    .line 359
    return-void
.end method
