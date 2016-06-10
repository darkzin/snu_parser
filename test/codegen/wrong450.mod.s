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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <char> %ebp-41 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $21557, %eax            #   0:     add    t3 <- 21557, 67152
    movl    $67152, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $56546, %eax            #   1:     mul    t4 <- 56546, 25720
    movl    $25720, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     mul    t5 <- t4, 93989
    movl    $93989, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     div    t6 <- t5, 74626
    movl    $74626, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     mul    t7 <- t6, 5692
    movl    $5692, %ebx            
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -20(%ebp), %eax         #   5:     sub    t8 <- t3, t7
    movl    -36(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   6:     param  0 <- t8
    pushl   %eax                   
    call    WriteInt                #   7:     call   WriteInt
    addl    $4, %esp               
l_f0_2_while_cond:
    call    dummyCHARfunc           #   9:     call   t9 <- dummyCHARfunc
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  10:     if     t9 = 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #  11:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #  13:     goto   2_while_cond
l_f0_1:
    jmp     l_f0_7                  #  15:     goto   7
    jmp     l_f0_7                  #  16:     goto   7
    movl    $1, %eax                #  17:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #  18:     goto   8
l_f0_7:
    movl    $0, %eax                #  20:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_8:
    movzbl  -13(%ebp), %eax         #  22:     return t10
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f1_1_while_cond:
    movl    $60192, %eax            #   1:     if     60192 >= 7644 goto 2_while_body
    movl    $7644, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    call    dummyBOOLfunc           #   4:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   5:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $90989, %eax            #   6:     if     90989 > 58547 goto 7_if_true
    movl    $58547, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   7:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #   9:     goto   6
l_f1_8_if_false:
l_f1_6:
    movl    $1, %eax                #  12:     assign v0 <- 1
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #  13:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f1_1_while_cond       #  14:     goto   1_while_cond
l_f1_0:
    movl    $3602, %eax             #  16:     if     3602 < 57118 goto 13_if_true
    movl    $57118, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  17:     goto   14_if_false
l_f1_13_if_true:
    movl    $99, %eax               #  19:     return 99
    jmp     l_f1_exit              
    movl    $78622, %eax            #  20:     assign v1 <- 78622
    movl    %eax, -28(%ebp)        
l_f1_19_while_cond:
    movl    $98, %eax               #  22:     if     98 # 98 goto 20_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_20_while_body     
    jmp     l_f1_18                 #  23:     goto   18
l_f1_20_while_body:
    jmp     l_f1_19_while_cond      #  25:     goto   19_while_cond
l_f1_18:
    movl    $100, %eax              #  27:     return 100
    jmp     l_f1_exit              
    movl    $98, %eax               #  28:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_26_if_false        #  29:     goto   26_if_false
    jmp     l_f1_24                 #  30:     goto   24
l_f1_26_if_false:
l_f1_24:
    movl    $42393, %eax            #  33:     assign v1 <- 42393
    movl    %eax, -28(%ebp)        
    jmp     l_f1_12                 #  34:     goto   12
l_f1_14_if_false:
l_f1_12:
    call    dummyINTfunc            #  37:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
    call    f1                      #   0:     call   t3 <- f1
    movb    %al, -13(%ebp)         
    movl    $18853, %eax            #   1:     assign v3 <- 18853
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #   2:     if     99 <= 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   3:     goto   4_if_false
l_f2_3_if_true:
    movl    $99, %eax               #   5:     if     99 < 99 goto 7
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_7                 
    jmp     l_f2_8                  #   6:     goto   8
l_f2_7:
    movl    $1, %eax                #   8:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_9                  #   9:     goto   9
l_f2_8:
    movl    $0, %eax                #  11:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_9:
    movzbl  -14(%ebp), %eax         #  13:     return t4
    jmp     l_f2_exit              
    jmp     l_f2_13_if_false        #  14:     goto   13_if_false
    jmp     l_f2_11                 #  15:     goto   11
l_f2_13_if_false:
l_f2_11:
    movl    $0, %eax                #  18:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_2                  #  19:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    movl    $1, %eax                #   0:     if     1 # 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    dummyINTfunc            #   3:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     assign v0 <- t0
    movl    %eax, v0               
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    call    ReadInt                 #   8:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $36160, %eax            #   9:     sub    t2 <- 36160, 234
    movl    $234, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     assign v0 <- t2
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
