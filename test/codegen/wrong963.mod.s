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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 4 of <array 6 of <array 9 of <array 2 of <int>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v2 <- t1
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #   2:     assign v0 <- 1
    movb    %al, 8(%ebp)           
l_f0_3_while_cond:
    movl    $98, %eax               #   4:     if     98 >= 100 goto 4_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_4_while_body      
    jmp     l_f0_2                  #   5:     goto   2
l_f0_4_while_body:
    movl    $97, %eax               #   7:     if     97 < 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   8:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #  10:     goto   6
l_f0_8_if_false:
l_f0_6:
    movl    $98, %eax               #  13:     return 98
    jmp     l_f0_exit              
    movl    $66236, %eax            #  14:     assign v2 <- 66236
    movl    %eax, -20(%ebp)        
    movl    $100, %eax              #  15:     return 100
    jmp     l_f0_exit              
    movl    $97, %eax               #  16:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #  17:     goto   3_while_cond
l_f0_2:

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    movl    $96185, %eax            #   0:     if     96185 < 98891 goto 1
    movl    $98891, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t1
    movb    %al, -14(%ebp)         
    movl    $12424, %eax            #   9:     if     12424 <= 61024 goto 6_if_true
    movl    $61024, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  10:     goto   7_if_false
l_f1_6_if_true:
    movl    $63390, %eax            #  12:     assign v1 <- 63390
    movl    %eax, -20(%ebp)        
    jmp     l_f1_5                  #  13:     goto   5
l_f1_7_if_false:
l_f1_5:
l_f1_11_while_cond:
    jmp     l_f1_14                 #  17:     goto   14
l_f1_14:
    jmp     l_f1_10                 #  19:     goto   10
    jmp     l_f1_11_while_cond      #  20:     goto   11_while_cond
l_f1_10:

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 3 of <array 4 of <array 6 of <array 9 of <array 2 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t4       <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #   -5232(%ebp)  5208  [ $v0       <array 3 of <array 4 of <array 6 of <array 9 of <array 2 of <int>>>>>> %ebp-5232 ]
    #   -5233(%ebp)   1  [ $v1       <bool> %ebp-5233 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $5224, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1306, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-5232(%ebp)          # local array 'v0': 5 dimensions
    movl    $3,-5228(%ebp)          #   dimension 1: 3 elements
    movl    $4,-5224(%ebp)          #   dimension 2: 4 elements
    movl    $6,-5220(%ebp)          #   dimension 3: 6 elements
    movl    $9,-5216(%ebp)          #   dimension 4: 9 elements
    movl    $2,-5212(%ebp)          #   dimension 5: 2 elements

    # function body
    movl    $98, %eax               #   0:     if     98 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    movl    $98, %eax               #   4:     if     98 # 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_6_while_body      
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   7:     goto   5_while_cond
l_f2_4:
    movl    $75147, %eax            #   9:     param  0 <- 75147
    pushl   %eax                   
    call    WriteInt                #  10:     call   WriteInt
    addl    $4, %esp               
l_f2_10_while_cond:
    jmp     l_f2_9                  #  12:     goto   9
    jmp     l_f2_10_while_cond      #  13:     goto   10_while_cond
l_f2_9:
l_f2_13_while_cond:
    movl    $92529, %eax            #  16:     if     92529 > 99881 goto 14_while_body
    movl    $99881, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_14_while_body     
    jmp     l_f2_12                 #  17:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  19:     goto   13_while_cond
l_f2_12:
    leal    -5232(%ebp), %eax       #  21:     &()    t1 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     param  1 <- t1
    pushl   %eax                   
    movl    $98, %eax               #  23:     if     98 < 97 goto 17
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_17                
    jmp     l_f2_18                 #  24:     goto   18
l_f2_17:
    movl    $1, %eax                #  26:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_19                 #  27:     goto   19
l_f2_18:
    movl    $0, %eax                #  29:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f2_19:
    movzbl  -17(%ebp), %eax         #  31:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  32:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -18(%ebp)         
    jmp     l_f2_0                  #  33:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $99, %eax               #  36:     if     99 < 98 goto 22_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_22_if_true        
    jmp     l_f2_23_if_false        #  37:     goto   23_if_false
l_f2_22_if_true:
    movl    $98459, %eax            #  39:     if     98459 > 39817 goto 26
    movl    $39817, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_26                
    jmp     l_f2_27                 #  40:     goto   27
l_f2_26:
    movl    $1, %eax                #  42:     assign t4 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_28                 #  43:     goto   28
l_f2_27:
    movl    $0, %eax                #  45:     assign t4 <- 0
    movb    %al, -19(%ebp)         
l_f2_28:
    movzbl  -19(%ebp), %eax         #  47:     assign v1 <- t4
    movb    %al, -5233(%ebp)       
    jmp     l_f2_21                 #  48:     goto   21
l_f2_23_if_false:
l_f2_21:
l_f2_31_while_cond:
    movl    $98, %eax               #  52:     if     98 > 99 goto 32_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_32_while_body     
    jmp     l_f2_30                 #  53:     goto   30
l_f2_32_while_body:
    call    dummyINTfunc            #  55:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_f2_31_while_cond      #  56:     goto   31_while_cond
l_f2_30:

l_f2_exit:
    # epilogue
    addl    $5224, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    movl    $15847, %eax            #   0:     assign v0 <- 15847
    movl    %eax, v0               
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   4:     goto   2_while_cond
l_test_1:
    call    dummyBOOLfunc           #   6:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
