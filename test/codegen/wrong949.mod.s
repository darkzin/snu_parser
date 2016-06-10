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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -14(%ebp)   1  [ $v1       <char> %ebp-14 ]

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
l_f0_1_while_cond:
    jmp     l_f0_5                  #   1:     goto   5
l_f0_5:
    jmp     l_f0_2_while_body       #   3:     goto   2_while_body
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   7:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t3
    movb    %al, -14(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f1_3_while_cond:
    jmp     l_f1_6                  #   3:     goto   6
    jmp     l_f1_7                  #   4:     goto   7
l_f1_6:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_8                  #   7:     goto   8
l_f1_7:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f1_8:
    movzbl  -15(%ebp), %eax         #  11:     if     t5 # 0 goto 4_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_4_while_body      
    jmp     l_f1_2                  #  12:     goto   2
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #  14:     goto   3_while_cond
l_f1_2:

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
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v0       <char> %ebp-25 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_3_if_false         #   1:     goto   3_if_false
    movl    $98, %eax               #   2:     assign v0 <- 98
    movb    %al, -25(%ebp)         
    jmp     l_f2_exit              
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_7_while_cond:
    movl    $16803, %eax            #   8:     mul    t4 <- 16803, 65582
    movl    $65582, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     sub    t5 <- t4, 53349
    movl    $53349, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $41277, %eax            #  10:     if     41277 < t5 goto 8_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_8_while_body      
    jmp     l_f2_6                  #  11:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  13:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_1_if_true        #   1:     goto   1_if_true
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   5:     goto   6_while_cond
l_test_9_while_cond:
    movl    $100, %eax              #   7:     if     100 > 100 goto 10_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_10_while_body   
    jmp     l_test_8                #   8:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  10:     goto   9_while_cond
l_test_8:
    jmp     l_test_0                #  12:     goto   0
l_test_2_if_false:
l_test_0:
    call    ReadInt                 #  15:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #  16:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #  17:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_17_if_false      #  18:     goto   17_if_false
    movl    $97, %eax               #  19:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_15               #  20:     goto   15
l_test_17_if_false:
l_test_15:

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
