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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
    jmp     l_f0_1_if_true          #   1:     goto   1_if_true
    jmp     l_f0_1_if_true          #   2:     goto   1_if_true
l_f0_1_if_true:
    jmp     l_f0_0                  #   4:     goto   0
l_f0_0:
l_f0_7_while_cond:
    jmp     l_f0_10                 #   7:     goto   10
l_f0_10:
    movl    $1, %eax                #   9:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_12                 #  10:     goto   12
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_12:
    movl    $0, %eax                #  13:     if     0 # t1 goto 8_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_8_while_body      
    jmp     l_f0_6                  #  14:     goto   6
l_f0_8_while_body:
    movl    $19404, %eax            #  16:     return 19404
    jmp     l_f0_exit              
    jmp     l_f0_7_while_cond       #  17:     goto   7_while_cond
l_f0_6:
    movl    $30162, %eax            #  19:     add    t2 <- 30162, 14055
    movl    $14055, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     add    t3 <- t2, 64883
    movl    $64883, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     return t3
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t10      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t9       <bool> %ebp-45 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 10 of <array 1 of <array 9 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 1 of <array 2 of <array 3 of <array 2 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 10 of <array 9 of <array 2 of <array 10 of <int>>>>>>> %ebp+16 ]
    #    -46(%ebp)   1  [ $v3       <bool> %ebp-46 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $97, %eax               #   0:     param  3 <- 97
    pushl   %eax                   
    movl    $0, %eax                #   1:     param  2 <- 0
    pushl   %eax                   
    movl    $1, %eax                #   2:     if     1 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_2                  #   3:     goto   2
l_f1_1:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #  10:     param  1 <- t1
    pushl   %eax                   
    movl    $98725, %eax            #  11:     div    t2 <- 98725, 13682
    movl    $13682, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     mul    t3 <- t2, 61834
    movl    $61834, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $45578, %eax            #  13:     mul    t4 <- 45578, 39721
    movl    $39721, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $84981, %eax            #  14:     add    t5 <- 84981, t4
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  15:     if     t3 = t5 goto 5
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_6                  #  16:     goto   6
l_f1_5:
    movl    $1, %eax                #  18:     assign t6 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_7                  #  19:     goto   7
l_f1_6:
    movl    $0, %eax                #  21:     assign t6 <- 0
    movb    %al, -33(%ebp)         
l_f1_7:
    movzbl  -33(%ebp), %eax         #  23:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  24:     call   t7 <- f0
    addl    $16, %esp              
    movl    %eax, -40(%ebp)        
    call    ReadInt                 #  25:     call   t8 <- ReadInt
    movl    %eax, -44(%ebp)        
    movl    $95560, %eax            #  26:     if     95560 < t8 goto 10
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_10                
    jmp     l_f1_11                 #  27:     goto   11
l_f1_10:
    movl    $1, %eax                #  29:     assign t9 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f1_12                 #  30:     goto   12
l_f1_11:
    movl    $0, %eax                #  32:     assign t9 <- 0
    movb    %al, -45(%ebp)         
l_f1_12:
    movzbl  -45(%ebp), %eax         #  34:     assign v3 <- t9
    movb    %al, -46(%ebp)         
    call    dummyCHARfunc           #  35:     call   t10 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

l_f1_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 10 of <array 4 of <array 10 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 9 of <array 6 of <array 7 of <array 7 of <char>>>>>>> %ebp+12 ]

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
    movl    $100, %eax              #   0:     return 100
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   2:     if     98 # 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   3:     goto   4_if_false
l_f2_3_if_true:
    movl    $98, %eax               #   5:     return 98
    jmp     l_f2_exit              
    movl    $97, %eax               #   6:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_2                  #   7:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]

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
    movl    $97, %eax               #   0:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    leal    _str_1, %eax            #   2:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   4:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_exit            

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
