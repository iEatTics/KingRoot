.class public interface abstract Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/IRootService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final INTERFACE:Ljava/lang/String; = "com.tencent.tmsecurelite.IRootService"

.field public static final T_checkVersion:I = 0x2

.field public static final T_sharedRootRunCmd:I = 0x1

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract checkVersion(I)Z
.end method

.method public abstract shareRootRunCmd(Ljava/lang/String;)V
.end method
