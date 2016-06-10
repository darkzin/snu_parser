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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $44785, %eax            #   0:     add    t8 <- 44785, 88373
    movl    $88373, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     add    t9 <- t8, 60206
    movl    $60206, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     add    t10 <- t9, 63809
    movl    $63809, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     add    t11 <- t10, 64941
    movl    $64941, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $62337, %eax            #   4:     if     62337 >= t11 goto 1_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   5:     goto   2_if_false
l_f0_1_if_true:
    movl    $40746, %eax            #   7:     if     40746 < 28817 goto 5
    movl    $28817, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_5                 
    jmp     l_f0_6                  #   8:     goto   6
l_f0_5:
    movl    $1, %eax                #  10:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_7                  #  11:     goto   7
l_f0_6:
    movl    $0, %eax                #  13:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f0_7:
    movzbl  -21(%ebp), %eax         #  15:     assign v2 <- t12
    movb    %al, 16(%ebp)          
    jmp     l_f0_0                  #  16:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_10_while_cond:
    jmp     l_f0_11_while_body      #  20:     goto   11_while_body
    jmp     l_f0_9                  #  21:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  23:     goto   10_while_cond
l_f0_9:
l_f0_16_while_cond:
    jmp     l_f0_15                 #  26:     goto   15
l_f0_19_while_cond:
    jmp     l_f0_18                 #  28:     goto   18
    jmp     l_f0_23_if_false        #  29:     goto   23_if_false
    jmp     l_f0_21                 #  30:     goto   21
l_f0_23_if_false:
l_f0_21:
    jmp     l_f0_19_while_cond      #  33:     goto   19_while_cond
l_f0_18:
    jmp     l_f0_16_while_cond      #  35:     goto   16_while_cond
l_f0_15:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 56 of <array 14 of <array 68 of <array 98 of <array 16 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 100 of <array 88 of <array 36 of <array 48 of <array 69 of <char>>>>>>> %ebp+16 ]

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
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   2:     if     99 < t8 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
l_f1_5_while_cond:
    movl    $97, %eax               #   8:     if     97 <= 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_6_while_body      
    jmp     l_f1_4                  #   9:     goto   4
l_f1_6_while_body:
l_f1_9_while_cond:
    movl    $97, %eax               #  12:     if     97 < 97 goto 10_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_10_while_body     
    jmp     l_f1_8                  #  13:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  15:     goto   9_while_cond
l_f1_8:
l_f1_13_while_cond:
    jmp     l_f1_12                 #  18:     goto   12
    jmp     l_f1_13_while_cond      #  19:     goto   13_while_cond
l_f1_12:
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  22:     call   t9 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f1_18_while_cond:
    jmp     l_f1_17                 #  24:     goto   17
    jmp     l_f1_18_while_cond      #  25:     goto   18_while_cond
l_f1_17:
    jmp     l_f1_5_while_cond       #  27:     goto   5_while_cond
l_f1_4:
l_f1_21_while_cond:
    jmp     l_f1_22_while_body      #  30:     goto   22_while_body
    jmp     l_f1_22_while_body      #  31:     goto   22_while_body
    jmp     l_f1_20                 #  32:     goto   20
l_f1_22_while_body:
    jmp     l_f1_21_while_cond      #  34:     goto   21_while_cond
l_f1_20:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    ReadInt                 #   0:     call   t8 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    ReadInt                 #   1:     call   t9 <- ReadInt
    movl    %eax, -24(%ebp)        
    call    ReadInt                 #   2:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    jmp     l_test_exit            
    movl    $77868, %eax            #   4:     if     77868 > 39251 goto 6
    movl    $39251, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6               
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $1, %eax                #   7:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_8                #   8:     goto   8
l_test_7:
    movl    $0, %eax                #  10:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_8:
    movzbl  -13(%ebp), %eax         #  12:     assign v0 <- t0
    movb    %al, v0                
    movl    $26478, %eax            #  13:     if     26478 >= 85608 goto 11
    movl    $85608, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_11              
    jmp     l_test_12               #  14:     goto   12
l_test_11:
    movl    $1, %eax                #  16:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_13               #  17:     goto   13
l_test_12:
    movl    $0, %eax                #  19:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_13:
    movzbl  -14(%ebp), %eax         #  21:     assign v0 <- t1
    movb    %al, v0                
    movl    $51963, %eax            #  22:     sub    t2 <- 51963, 66097
    movl    $66097, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     sub    t3 <- t2, 22236
    movl    $22236, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     param  0 <- t3
    pushl   %eax                   
    call    WriteInt                #  25:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_2_while_cond     #  26:     goto   2_while_cond
l_test_1:
    movl    $55878, %eax            #  28:     sub    t4 <- 55878, 9514
    movl    $9514, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     sub    t5 <- t4, 33350
    movl    $33350, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  30:     sub    t6 <- t5, 58371
    movl    $58371, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     add    t7 <- t6, 49291
    movl    $49291, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  32:     assign v1 <- t7
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
