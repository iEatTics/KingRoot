.class public interface abstract Lcom/kingroot/kinguser/service/IKingrootAppList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/service/IKingrootAppList$Stub;
    }
.end annotation


# static fields
.field public static final ALLOW_ROOT_LIST:I = 0x1

.field public static final DENY_ROOT_LIST:I


# virtual methods
.method public abstract addItem(Ljava/lang/String;ILjava/lang/String;J)I
.end method

.method public abstract delelteItem(Ljava/lang/String;)I
.end method

.method public abstract getAllAppList()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/service/KingrootAppItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllowAppList()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/service/KingrootAppItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDenyAppList()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/service/KingrootAppItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract modifyItem(Ljava/lang/String;ILjava/lang/String;J)I
.end method
