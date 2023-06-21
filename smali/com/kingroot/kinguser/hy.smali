.class public Lcom/kingroot/kinguser/hy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/king/uranus/g;Ljava/lang/String;)Lcom/kingroot/kinguser/il;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/kingroot/kinguser/hy;->a(Lcom/king/uranus/g;Ljava/lang/String;Lcom/kingroot/kinguser/ib;)Lcom/kingroot/kinguser/il;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/king/uranus/g;Ljava/lang/String;Lcom/kingroot/kinguser/ib;)Lcom/kingroot/kinguser/il;
    .locals 4

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    new-instance v0, Lcom/king/uranus/R;

    const-string v1, "input cloudCmd was invalid"

    invoke-direct {v0, v1}, Lcom/king/uranus/R;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iget v1, p0, Lcom/king/uranus/g;->at:I

    .line 34
    sparse-switch v1, :sswitch_data_0

    .line 50
    new-instance v0, Lcom/king/uranus/R;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to found executer for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/king/uranus/R;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :sswitch_0
    new-instance v0, Lcom/kingroot/kinguser/im;

    invoke-direct {v0, p2}, Lcom/kingroot/kinguser/im;-><init>(Lcom/kingroot/kinguser/ib;)V

    .line 47
    :goto_0
    return-object v0

    .line 42
    :sswitch_1
    new-instance v0, Lcom/kingroot/kinguser/in;

    invoke-direct {v0}, Lcom/kingroot/kinguser/in;-><init>()V

    goto :goto_0

    .line 47
    :sswitch_2
    new-instance v0, Lcom/kingroot/kinguser/id;

    invoke-direct {v0, v1, p1, p0}, Lcom/kingroot/kinguser/id;-><init>(ILjava/lang/String;Lcom/king/uranus/g;)V

    goto :goto_0

    .line 34
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x149 -> :sswitch_0
        0x15e -> :sswitch_2
    .end sparse-switch
.end method
