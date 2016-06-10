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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]

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
    movl    $63391, %eax            #   0:     assign v1 <- 63391
    movl    %eax, -32(%ebp)        
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t3 # 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $92993, %eax            #   8:     add    t4 <- 92993, 90237
    movl    $90237, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #   9:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  10:     add    t6 <- t4, t5
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     return t6
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f1_2_while_cond:
    movl    $100, %eax              #   2:     if     100 >= 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_3_while_body      
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_while_body:
    call    WriteLn                 #   5:     call   WriteLn
l_f1_7_while_cond:
    movl    $16208, %eax            #   7:     if     16208 = 43360 goto 8_while_body
    movl    $43360, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_8_while_body      
    jmp     l_f1_6                  #   8:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  10:     goto   7_while_cond
l_f1_6:
l_f1_11_while_cond:
    movl    $52858, %eax            #  13:     if     52858 # 35014 goto 12_while_body
    movl    $35014, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_12_while_body     
    jmp     l_f1_10                 #  14:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  16:     goto   11_while_cond
l_f1_10:
    call    dummyBOOLfunc           #  18:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_2_while_cond       #  19:     goto   2_while_cond
l_f1_1:
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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <char> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 74 of <array 97 of <array 1 of <array 88 of <array 11 of <char>>>>>>> %ebp+12 ]

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
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
l_f2_1_if_true:
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_0                  #   3:     goto   0
l_f2_0:
    call    dummyCHARfunc           #   5:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   6:     return t4
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   7:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   8:     if     t5 # 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   9:     goto   8_if_false
l_f2_7_if_true:
    movl    $99, %eax               #  11:     return 99
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  12:     call   t6 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  13:     param  0 <- t6
    pushl   %eax                   
    call    WriteChar               #  14:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_6                  #  15:     goto   6
l_f2_8_if_false:
l_f2_6:

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
    jmp     l_test_exit            
    movl    $20626, %eax            #   1:     sub    t0 <- 20626, 29191
    movl    $29191, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t1 <- t0, 77829
    movl    $77829, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t2 <- t1, 56140
    movl    $56140, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     assign v0 <- t2
    movl    %eax, v0               
l_test_3_while_cond:
    movl    $8940, %eax             #   6:     assign v0 <- 8940
    movl    %eax, v0               
    jmp     l_test_3_while_cond     #   7:     goto   3_while_cond

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
