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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 7 of <array 10 of <array 5 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    movl    $38757, %eax            #   2:     if     38757 < 68794 goto 4_if_true
    movl    $68794, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   3:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_3                  #   5:     goto   3
l_f0_5_if_false:
l_f0_3:
    jmp     l_f0_9_if_false         #   8:     goto   9_if_false
    jmp     l_f0_7                  #   9:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_1_while_cond       #  12:     goto   1_while_cond
l_f0_0:
    movl    $66407, %eax            #  14:     div    t4 <- 66407, 99618
    movl    $99618, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $19986, %eax            #  15:     if     19986 >= t4 goto 11_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  16:     goto   12_if_false
l_f0_11_if_true:
l_f0_15_while_cond:
    jmp     l_f0_15_while_cond      #  19:     goto   15_while_cond
    jmp     l_f0_10                 #  20:     goto   10
l_f0_12_if_false:
l_f0_10:
    call    dummyBOOLfunc           #  23:     call   t5 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 4 of <array 8 of <array 6 of <array 7 of <char>>>>>>> %ebp+8 ]

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
    call    ReadInt                 #   0:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     if     t5 < 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_1:
    call    ReadInt                 #   8:     call   t6 <- ReadInt
    movl    %eax, -24(%ebp)        

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -16(%ebp)   1  [ $v3       <bool> %ebp-16 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_5_while_cond:
    movl    $0, %eax                #   2:     if     0 = 0 goto 6_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6_while_body      
    jmp     l_f2_4                  #   3:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   5:     goto   5_while_cond
l_f2_4:
l_f2_9_while_cond:
    movl    $39453, %eax            #   8:     if     39453 = 85106 goto 10_while_body
    movl    $85106, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_10_while_body     
    jmp     l_f2_8                  #   9:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  11:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_0                  #  13:     goto   0
l_f2_0:
    jmp     l_f2_18                 #  15:     goto   18
    movl    $1, %eax                #  16:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_19                 #  17:     goto   19
l_f2_18:
    movl    $0, %eax                #  19:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_19:
    movl    $1, %eax                #  21:     if     1 = t5 goto 13
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_13                
    jmp     l_f2_14                 #  22:     goto   14
l_f2_13:
    movl    $1, %eax                #  24:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_15                 #  25:     goto   15
l_f2_14:
    movl    $0, %eax                #  27:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f2_15:
    movzbl  -15(%ebp), %eax         #  29:     assign v3 <- t6
    movb    %al, -16(%ebp)         
    movl    $0, %eax                #  30:     assign v3 <- 0
    movb    %al, -16(%ebp)         

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
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
l_test_1_while_cond:
    movl    $31686, %eax            #   1:     if     31686 < 47007 goto 2_while_body
    movl    $47007, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    call    dummyINTfunc            #   9:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #  10:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_14_while_cond:
    jmp     l_test_13               #  12:     goto   13
    jmp     l_test_14_while_cond    #  13:     goto   14_while_cond
l_test_13:
l_test_17_while_cond:
    movl    $22159, %eax            #  16:     if     22159 # 9955 goto 18_while_body
    movl    $9955, %ebx            
    cmpl    %ebx, %eax             
    jne     l_test_18_while_body   
    jmp     l_test_16               #  17:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  19:     goto   17_while_cond
l_test_16:
    movl    $100, %eax              #  21:     if     100 >= 98 goto 21_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_21_if_true      
    jmp     l_test_22_if_false      #  22:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  24:     goto   20
l_test_22_if_false:
l_test_20:
    jmp     l_test_8                #  27:     goto   8
l_test_8:
    call    ReadInt                 #  29:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
l_test_26_while_cond:
    call    dummyCHARfunc           #  31:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  32:     if     t3 >= 97 goto 27_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_27_while_body   
    jmp     l_test_25               #  33:     goto   25
l_test_27_while_body:
    jmp     l_test_exit            
    jmp     l_test_32_if_false      #  36:     goto   32_if_false
    jmp     l_test_30               #  37:     goto   30
l_test_32_if_false:
l_test_30:
l_test_34_while_cond:
    jmp     l_test_33               #  41:     goto   33
    jmp     l_test_34_while_cond    #  42:     goto   34_while_cond
l_test_33:
    movl    $61683, %eax            #  44:     if     61683 # 1596 goto 37_if_true
    movl    $1596, %ebx            
    cmpl    %ebx, %eax             
    jne     l_test_37_if_true      
    jmp     l_test_38_if_false      #  45:     goto   38_if_false
l_test_37_if_true:
    jmp     l_test_36               #  47:     goto   36
l_test_38_if_false:
l_test_36:
    jmp     l_test_26_while_cond    #  50:     goto   26_while_cond
l_test_25:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
