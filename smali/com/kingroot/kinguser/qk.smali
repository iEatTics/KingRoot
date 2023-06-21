.class public Lcom/kingroot/kinguser/qk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/support/v7/widget/RecyclerView;I)Lcom/kingroot/kinguser/qf;
    .locals 2

    .prologue
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :pswitch_0
    new-instance v0, Lcom/kingroot/kinguser/qe;

    new-instance v1, Lcom/kingroot/kinguser/qn;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/qn;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/qe;-><init>(Lcom/kingroot/kinguser/qm;)V

    .line 46
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/kingroot/kinguser/ql;

    new-instance v1, Lcom/kingroot/kinguser/qn;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/qn;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ql;-><init>(Lcom/kingroot/kinguser/qm;)V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/widget/ScrollView;)Lcom/kingroot/kinguser/qf;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/kingroot/kinguser/ql;

    new-instance v1, Lcom/kingroot/kinguser/qo;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/qo;-><init>(Landroid/widget/ScrollView;)V

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ql;-><init>(Lcom/kingroot/kinguser/qm;)V

    return-object v0
.end method
