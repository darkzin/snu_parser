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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -14(%ebp)   1  [ $v1       <bool> %ebp-14 ]

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
    movl    $98, %eax               #   0:     if     98 >= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_exit              
    movl    $68098, %eax            #   4:     if     68098 < 5306 goto 6
    movl    $5306, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f0_6                 
    jmp     l_f0_7                  #   5:     goto   7
l_f0_6:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #   8:     goto   8
l_f0_7:
    movl    $0, %eax                #  10:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_8:
    movzbl  -13(%ebp), %eax         #  12:     assign v1 <- t2
    movb    %al, -14(%ebp)         
    movl    $12125, %eax            #  13:     if     12125 >= 12480 goto 11_if_true
    movl    $12480, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  14:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  16:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_exit              
l_f0_16_while_cond:
    jmp     l_f0_16_while_cond      #  21:     goto   16_while_cond
    movl    $75096, %eax            #  22:     param  0 <- 75096
    pushl   %eax                   
    call    WriteInt                #  23:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  26:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_22_while_cond:
    movl    $21030, %eax            #  30:     if     21030 = 48563 goto 23_while_body
    movl    $48563, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_23_while_body     
    jmp     l_f0_21                 #  31:     goto   21
l_f0_23_while_body:
    call    dummyProcedure          #  33:     call   dummyProcedure
    jmp     l_f0_exit              
l_f0_28_while_cond:
    movl    $55492, %eax            #  36:     if     55492 < 11880 goto 29_while_body
    movl    $11880, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_29_while_body     
    jmp     l_f0_27                 #  37:     goto   27
l_f0_29_while_body:
    jmp     l_f0_28_while_cond      #  39:     goto   28_while_cond
l_f0_27:
l_f0_32_while_cond:
    jmp     l_f0_31                 #  42:     goto   31
    jmp     l_f0_32_while_cond      #  43:     goto   32_while_cond
l_f0_31:
l_f0_35_while_cond:
    jmp     l_f0_34                 #  46:     goto   34
    jmp     l_f0_35_while_cond      #  47:     goto   35_while_cond
l_f0_34:
    jmp     l_f0_22_while_cond      #  49:     goto   22_while_cond
l_f0_21:
    movl    $45155, %eax            #  51:     assign v0 <- 45155
    movl    %eax, 8(%ebp)          

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $95711, %eax            #   3:     if     95711 <= 85023 goto 3_while_body
    movl    $85023, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    movl    $44573, %eax            #   6:     assign v0 <- 44573
    movl    %eax, 8(%ebp)          
l_f1_7_while_cond:
    jmp     l_f1_6                  #   8:     goto   6
    jmp     l_f1_7_while_cond       #   9:     goto   7_while_cond
l_f1_6:
    movl    $1, %eax                #  11:     if     1 = 0 goto 10
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_10                
    jmp     l_f1_11                 #  12:     goto   11
l_f1_10:
    movl    $1, %eax                #  14:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_12                 #  15:     goto   12
l_f1_11:
    movl    $0, %eax                #  17:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f1_12:
    movzbl  -14(%ebp), %eax         #  19:     assign v2 <- t3
    movb    %al, -16(%ebp)         
    jmp     l_f1_2_while_cond       #  20:     goto   2_while_cond
l_f1_1:
    call    dummyBOOLfunc           #  22:     call   t4 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 43 of <array 49 of <array 51 of <array 28 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 72 of <array 35 of <array 56 of <array 68 of <array 65 of <int>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    jmp     l_f2_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $0, %eax                #   4:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v2 <- t2
    movb    %al, -15(%ebp)         
    jmp     l_f2_7                  #   7:     goto   7
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_8                  #   9:     goto   8
l_f2_7:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_8:
    movzbl  -14(%ebp), %eax         #  13:     assign v2 <- t3
    movb    %al, -15(%ebp)         
    movl    $0, %eax                #  14:     assign v2 <- 0
    movb    %al, -15(%ebp)         
    movl    $99, %eax               #  15:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_11                 #  16:     goto   11
l_f2_11:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
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
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
