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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t5
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $98, %eax               #   3:     if     98 = 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    jmp     l_f0_7_if_false         #   6:     goto   7_if_false
    jmp     l_f0_5                  #   7:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $100, %eax              #  10:     if     100 > 99 goto 9_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  11:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  13:     goto   8
l_f0_10_if_false:
l_f0_8:
    movl    $97, %eax               #  16:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #  17:     goto   2_while_cond
l_f0_1:
l_f0_14_while_cond:
l_f0_18_while_cond:
    jmp     l_f0_18_while_cond      #  21:     goto   18_while_cond
    jmp     l_f0_14_while_cond      #  22:     goto   14_while_cond

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f1_exit              
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #   1:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f2_3_while_cond:
    jmp     l_f2_6                  #   3:     goto   6
l_f2_6:
    jmp     l_f2_4_while_body       #   5:     goto   4_while_body
l_f2_4_while_body:
    jmp     l_f2_3_while_cond       #   7:     goto   3_while_cond

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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    movl    $51028, %eax            #   0:     sub    t0 <- 51028, 8463
    movl    $8463, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 67492
    movl    $67492, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t1
    movl    %eax, v0               
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_5_while_cond:
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
    movl    $99, %eax               #   6:     if     99 < 98 goto 8_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_8_if_true       
    jmp     l_test_9_if_false       #   7:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #   9:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $97, %eax               #  12:     if     97 <= 97 goto 12
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_12              
    jmp     l_test_13               #  13:     goto   13
l_test_12:
    movl    $1, %eax                #  15:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_14               #  16:     goto   14
l_test_13:
    movl    $0, %eax                #  18:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_14:
    movzbl  -21(%ebp), %eax         #  20:     assign v1 <- t2
    movb    %al, v1                
    jmp     l_test_1                #  21:     goto   1
l_test_3_if_false:
l_test_1:
    call    ReadInt                 #  24:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #  25:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  26:     assign v2 <- t4
    movb    %al, v2                
    jmp     l_test_exit            

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
v1:                                 # <bool>
    .skip    1
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
