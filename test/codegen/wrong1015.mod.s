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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t8       <char> %ebp-19 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    movl    $98, %eax               #   0:     if     98 >= 98 goto 4_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   1:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_3                  #   3:     goto   3
l_f0_5_if_false:
l_f0_3:
    movl    $99, %eax               #   6:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    call    ReadInt                 #   7:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   8:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
l_f0_11_while_cond:
    jmp     l_f0_10                 #  10:     goto   10
    jmp     l_f0_11_while_cond      #  11:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_0                  #  13:     goto   0
l_f0_0:
    call    dummyCHARfunc           #  15:     call   t7 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  16:     param  0 <- t7
    pushl   %eax                   
    call    WriteChar               #  17:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #  18:     call   t8 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movzbl  -19(%ebp), %eax         #  19:     assign v0 <- t8
    movb    %al, 8(%ebp)           

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     assign v2 <- 98
    movb    %al, 16(%ebp)          
l_f1_3_while_cond:
    jmp     l_f1_2                  #   3:     goto   2
l_f1_6_while_cond:
    jmp     l_f1_6_while_cond       #   5:     goto   6_while_cond
    movl    $1, %eax                #   6:     assign v0 <- 1
    movb    %al, 8(%ebp)           
    movl    $1, %eax                #   7:     if     1 = 1 goto 10_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #   8:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  10:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $85816, %eax            #  13:     assign v1 <- 85816
    movl    %eax, 12(%ebp)         
    jmp     l_f1_exit              
    call    dummyINTfunc            #  15:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f1_exit              
    movl    $71300, %eax            #  17:     assign v1 <- 71300
    movl    %eax, 12(%ebp)         
l_f1_19_while_cond:
    movl    $99, %eax               #  19:     if     99 > 97 goto 20_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_20_while_body     
    jmp     l_f1_18                 #  20:     goto   18
l_f1_20_while_body:
    jmp     l_f1_19_while_cond      #  22:     goto   19_while_cond
l_f1_18:
    jmp     l_f1_3_while_cond       #  24:     goto   3_while_cond
l_f1_2:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]

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
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    movl    $97, %eax               #   2:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #   3:     call   t5 <- f0
    addl    $4, %esp               
    movl    %eax, -16(%ebp)        

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
    jmp     l_test_exit            
l_test_6_while_cond:
    movl    $27061, %eax            #   4:     if     27061 > 90356 goto 7_while_body
    movl    $90356, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #   5:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
l_test_5:
l_test_10_while_cond:
    movl    $16938, %eax            #  10:     if     16938 < 799 goto 11_while_body
    movl    $799, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_11_while_body   
    jmp     l_test_9                #  11:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  13:     goto   10_while_cond
l_test_9:
    jmp     l_test_1                #  15:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_15_if_false      #  18:     goto   15_if_false
    movl    $1, %eax                #  19:     if     1 # 1 goto 17_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_17_if_true      
    jmp     l_test_18_if_false      #  20:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_exit            
l_test_22_while_cond:
    jmp     l_test_22_while_cond    #  24:     goto   22_while_cond
    jmp     l_test_16               #  25:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_13               #  28:     goto   13
l_test_15_if_false:
l_test_13:
    movl    $36685, %eax            #  31:     add    t1 <- 36685, 62325
    movl    $62325, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  32:     add    t2 <- t1, 83067
    movl    $83067, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  33:     assign v0 <- t2
    movl    %eax, v0               
    call    dummyINTfunc            #  34:     call   t3 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    $98, %eax               #  35:     param  0 <- 98
    pushl   %eax                   
    call    f0                      #  36:     call   t4 <- f0
    addl    $4, %esp               
    movl    %eax, -32(%ebp)        

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
