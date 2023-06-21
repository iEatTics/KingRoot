.class final Lcom/kingroot/kinguser/awm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awm;->SY()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aUU:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/kingroot/kinguser/awm$1;->aUU:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 4

    .prologue
    .line 203
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/awm$1;->aUU:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/awm;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa3

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/awj;->f(Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/awi;->cm(J)V

    .line 208
    :cond_0
    return-void
.end method
