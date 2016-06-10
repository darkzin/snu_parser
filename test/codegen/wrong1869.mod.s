##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v1       <bool> %ebp-16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     assign v0 <- 99
    movb    %al, -15(%ebp)         
l_f0_3_while_cond:
    call    dummyProcedure          #   3:     call   dummyProcedure
l_f0_7_while_cond:
    movl    $84258, %eax            #   5:     if     84258 <= 80007 goto 8_while_body
    movl    $80007, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_8_while_body      
    jmp     l_f0_6                  #   6:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #   8:     goto   7_while_cond
l_f0_6:
    movl    $36884, %eax            #  10:     return 36884
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  11:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $0, %eax                #  12:     assign v1 <- 0
    movb    %al, -16(%ebp)         
    jmp     l_f0_3_while_cond       #  13:     goto   3_while_cond

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    f0                      #   0:     call   t0 <- f0
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #   2:     if     99 >= t1 goto 2_if_true
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $87474, %eax            #   8:     if     87474 = 13240 goto 6_if_true
    movl    $13240, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   9:     goto   7_if_false
l_f1_6_if_true:
    movl    $100, %eax              #  11:     if     100 <= 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  12:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  14:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_5                  #  17:     goto   5
l_f1_7_if_false:
l_f1_5:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t17      <char> %ebp-49 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 87 of <array 5 of <array 90 of <array 97 of <array 38 of <bool>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    movl    $14865, %eax            #   1:     if     14865 <= 41397 goto 2_while_body
    movl    $41397, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   6:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   7:     call   t0 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $86259, %eax            #   8:     mul    t1 <- 86259, t0
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     add    t2 <- t1, 34144
    movl    $34144, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  11:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  12:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  13:     mul    t4 <- t2, t3
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  14:     add    t5 <- t4, 45876
    movl    $45876, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  16:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  17:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  18:     mul    t7 <- t5, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  19:     add    t8 <- t7, 41814
    movl    $41814, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  21:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  22:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  23:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     add    t11 <- t10, 16719
    movl    $16719, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     mul    t12 <- t11, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    20(%ebp), %eax          #  26:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  27:     call   t13 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  28:     add    t14 <- t12, t13
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    20(%ebp), %eax          #  29:     add    t15 <- v3, t14
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $1, %eax                #  30:     assign @t15 <- 1
    movl    -44(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $100, %eax              #  31:     if     100 <= 99 goto 9_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  32:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  34:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $98, %eax               #  37:     assign v0 <- 98
    movb    %al, 8(%ebp)           
l_f2_14_while_cond:
    jmp     l_f2_13                 #  39:     goto   13
    jmp     l_f2_14_while_cond      #  40:     goto   14_while_cond
l_f2_13:
    jmp     l_f2_4                  #  42:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_1_while_cond       #  45:     goto   1_while_cond
l_f2_0:
l_f2_17_while_cond:
    movl    $97, %eax               #  48:     param  1 <- 97
    pushl   %eax                   
    movl    $12755, %eax            #  49:     mul    t16 <- 12755, 51427
    movl    $51427, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  50:     param  0 <- t16
    pushl   %eax                   
    call    f1                      #  51:     call   t17 <- f1
    addl    $8, %esp               
    movb    %al, -49(%ebp)         
    movl    $100, %eax              #  52:     if     100 <= t17 goto 18_while_body
    movzbl  -49(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_18_while_body     
    jmp     l_f2_16                 #  53:     goto   16
l_f2_18_while_body:
l_f2_21_while_cond:
    movl    $93953, %eax            #  56:     if     93953 < 4165 goto 22_while_body
    movl    $4165, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f2_22_while_body     
    jmp     l_f2_20                 #  57:     goto   20
l_f2_22_while_body:
    jmp     l_f2_21_while_cond      #  59:     goto   21_while_cond
l_f2_20:
    movl    $92442, %eax            #  61:     if     92442 # 93781 goto 25_if_true
    movl    $93781, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_25_if_true        
    jmp     l_f2_26_if_false        #  62:     goto   26_if_false
l_f2_25_if_true:
    jmp     l_f2_24                 #  64:     goto   24
l_f2_26_if_false:
l_f2_24:
    jmp     l_f2_30_if_false        #  67:     goto   30_if_false
    jmp     l_f2_28                 #  68:     goto   28
l_f2_30_if_false:
l_f2_28:
    jmp     l_f2_17_while_cond      #  71:     goto   17_while_cond
l_f2_16:
l_f2_32_while_cond:
    jmp     l_f2_31                 #  74:     goto   31
    jmp     l_f2_31                 #  75:     goto   31
    jmp     l_f2_32_while_cond      #  76:     goto   32_while_cond
l_f2_31:

l_f2_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $97, %eax               #   0:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
l_test_2_while_cond:
    movl    $25176, %eax            #   3:     if     25176 # 86776 goto 3_while_body
    movl    $86776, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    movl    $1, %eax                #   6:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_2_while_cond     #   7:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    movl    $99, %eax               #  10:     if     99 <= 100 goto 8_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_8_if_true       
    jmp     l_test_9_if_false       #  11:     goto   9_if_false
l_test_8_if_true:
    movl    $29814, %eax            #  13:     assign v1 <- 29814
    movl    %eax, v1               
    movl    $26207, %eax            #  14:     if     26207 = 33005 goto 13_if_true
    movl    $33005, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_13_if_true      
    jmp     l_test_14_if_false      #  15:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  17:     goto   12
l_test_14_if_false:
l_test_12:
    movl    $1, %eax                #  20:     assign v0 <- 1
    movb    %al, v0                
    movl    $1119, %eax             #  21:     if     1119 # 29385 goto 18_if_true
    movl    $29385, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_18_if_true      
    jmp     l_test_19_if_false      #  22:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  24:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_7                #  27:     goto   7
l_test_9_if_false:
l_test_7:

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
