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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $13025, %eax            #   1:     mul    t3 <- 13025, 98061
    movl    $98061, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $76465, %eax            #   2:     add    t4 <- 76465, t3
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t4
    jmp     l_f0_exit              
    call    dummyINTfunc            #   4:     call   t5 <- dummyINTfunc
    movl    %eax, -28(%ebp)        

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-20 ]

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
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   2:     if     97 < t2 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
l_f1_5_while_cond:
    movl    $51338, %eax            #   8:     if     51338 < 15916 goto 6_while_body
    movl    $15916, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_6_while_body      
    jmp     l_f1_4                  #   9:     goto   4
l_f1_6_while_body:
l_f1_9_while_cond:
    movl    $98, %eax               #  12:     if     98 >= 98 goto 10_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_10_while_body     
    jmp     l_f1_8                  #  13:     goto   8
l_f1_10_while_body:
    leal    _str_1, %eax            #  15:     &()    t3 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  17:     call   WriteStr
    addl    $4, %esp               
l_f1_14_while_cond:
    jmp     l_f1_13                 #  19:     goto   13
    jmp     l_f1_14_while_cond      #  20:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_9_while_cond       #  22:     goto   9_while_cond
l_f1_8:
    jmp     l_f1_5_while_cond       #  24:     goto   5_while_cond
l_f1_4:
l_f1_17_while_cond:
    jmp     l_f1_18_while_body      #  27:     goto   18_while_body
    jmp     l_f1_18_while_body      #  28:     goto   18_while_body
l_f1_18_while_body:
l_f1_24_while_cond:
    jmp     l_f1_24_while_cond      #  31:     goto   24_while_cond
    jmp     l_f1_17_while_cond      #  32:     goto   17_while_cond

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
l_f2_7_while_cond:
    call    dummyBOOLfunc           #   5:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     if     t2 = 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_8_while_body      
    jmp     l_f2_6                  #   7:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #   9:     goto   7_while_cond
l_f2_6:
    jmp     l_f2_exit              

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_6                #   2:     goto   6
    jmp     l_test_6                #   3:     goto   6
    jmp     l_test_6                #   4:     goto   6
    jmp     l_test_6                #   5:     goto   6
    jmp     l_test_6                #   6:     goto   6
l_test_6:
    movl    $1, %eax                #   8:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_8                #   9:     goto   8
    movl    $0, %eax                #  10:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_8:
    movl    $0, %eax                #  12:     if     0 = t0 goto 3_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_3_if_true       
    jmp     l_test_4_if_false       #  13:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_exit            
    jmp     l_test_2                #  16:     goto   2
l_test_4_if_false:
l_test_2:
    jmp     l_test_18               #  19:     goto   18
    jmp     l_test_18               #  20:     goto   18
l_test_18:
    movl    $1, %eax                #  22:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_20               #  23:     goto   20
    movl    $0, %eax                #  24:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_20:
    movzbl  -14(%ebp), %eax         #  26:     assign v0 <- t1
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
